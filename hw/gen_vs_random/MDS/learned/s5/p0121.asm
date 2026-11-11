.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 62
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
test sil, 41
btr si, di
test al, bl
test rbx, 45
and al, 87
and sil, sil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test ax, -20900
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btc cx, 115
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
