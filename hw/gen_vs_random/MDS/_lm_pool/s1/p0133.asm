.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 82
xor sil, al
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
btr ebx, edi
xor al, dl
test dil, -80
and rdx, 37
xor edi, 62
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
cmovnp rax, rdi
test eax, 424329527
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
