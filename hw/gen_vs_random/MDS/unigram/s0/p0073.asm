.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -1
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
bts ebx, 205
and eax, 454700988
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
btc cx, dx
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and dx, 60
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
cmovo rax, rsi
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
or al, -78
xor dil, -70
and cx, dx
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
