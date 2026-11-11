.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and cx, -2
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
xor ax, 31969
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or cx, 39
and al, dil
bt bx, si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
test al, 91
not bl
and dl, dl
test eax, -409834435
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
