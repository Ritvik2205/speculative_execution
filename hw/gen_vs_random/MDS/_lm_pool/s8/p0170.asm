.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
or rdx, -48
xor al, 55
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor bl, al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor al, -4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor al, 115
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
bt bx, si
or rdi, 21
test al, bl
test rax, 1207043993
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
