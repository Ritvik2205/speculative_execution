.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor dl, -59
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
test dil, 46
or al, -75
bts si, 205
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor al, cl
or sil, dl
test rsi, 77
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 31
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
