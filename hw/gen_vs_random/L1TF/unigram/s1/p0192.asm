.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 61
sbb bl, -94
cmovo rdi, rax
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
or al, -87
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
bts edx, 44
add bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
movzx esi, cx
cmp bl, 19
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
lea bx, qword ptr [rbx + rax + 97]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
btc ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
