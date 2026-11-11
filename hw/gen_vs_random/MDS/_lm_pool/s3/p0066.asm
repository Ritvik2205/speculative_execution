.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -21
xor rax, -773894210
and dx, 60
jmp .bb_0.1
.bb_0.1:
btr ax, cx
or al, 16
xor dl, -43
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.2
.bb_0.2:
xor bx, 60
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
btc ebx, 149
or al, dil
and al, -114
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test al, bl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
