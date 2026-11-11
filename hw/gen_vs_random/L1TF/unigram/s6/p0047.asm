.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
setnle cl
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
xchg al, al
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
jmp .bb_0.1
.bb_0.1:
btr edi, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 20
sub dil, 87
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 20
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
