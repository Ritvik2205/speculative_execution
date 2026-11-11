.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test eax, 298249463
test bl, -14
bts rbx, 115
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
bt di, ax
and ax, -4410
xor al, sil
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
btr eax, ebx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
