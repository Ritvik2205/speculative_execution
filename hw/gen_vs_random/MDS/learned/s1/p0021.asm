.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
or al, 25
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
xor dl, dil
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
bts rcx, rdx
jmp .bb_0.4
.bb_0.4:
or dl, bl
jmp .bb_0.5
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
