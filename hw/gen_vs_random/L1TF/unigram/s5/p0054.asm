.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe sil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
bt rdx, rdx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 42
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
sub ecx, eax
jmp .bb_0.1
.bb_0.1:
movzx dx, dl
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
sbb edx, 23
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 87
add bx, 5
inc esi
or rcx, rbx
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
