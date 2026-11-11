.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
bts rbx, 56
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
test cl, 54
or al, sil
xor al, 9
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test cl, 101
xor dil, dl
and dl, -73
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
