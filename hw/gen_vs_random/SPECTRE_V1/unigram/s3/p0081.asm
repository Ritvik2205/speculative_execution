.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 10
cmp sil, dl
xor rax, 29
movzx bx, al
or ax, 18658
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmovs rbx, rsi
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
lea rsi, qword ptr [rsi + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 61
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 23
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
lea edi, qword ptr [rdi + rbx + 48359]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
