.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
or cl, 7
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
jmp .bb_0.1
.bb_0.1:
or ax, -4210
and rdx, 47
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 4
and rsi, 13
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
