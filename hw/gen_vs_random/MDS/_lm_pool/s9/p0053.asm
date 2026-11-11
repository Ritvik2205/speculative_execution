.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
test eax, 1729060510
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test rsi, 4
jmp .bb_0.1
.bb_0.1:
xor cx, -18
jmp .bb_0.2
.bb_0.2:
bts rbx, 56
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test bl, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
