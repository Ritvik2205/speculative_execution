.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
dec sil
mov ax, si
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
bts rcx, rcx
sbb dl, -26
cmovns rdx, rdx
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
cmovle rsi, rax
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
