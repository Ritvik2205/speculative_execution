.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
test bl, -14
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rax, 41
and dil, -62
or cl, 30
jmp .bb_0.1
.bb_0.1:
test bl, -14
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test bl, al
test dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
