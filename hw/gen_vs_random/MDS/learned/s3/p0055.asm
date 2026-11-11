.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and al, bl
or cx, 49
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 67
or dl, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
