.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
not bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor bl, -61
xor dl, bl
or al, 24
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
xor rdi, -9
and sil, al
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and bl, bl
bts esi, 61
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
