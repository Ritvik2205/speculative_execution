.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
or al, cl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
not al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or ax, -11837
and al, bl
or al, -75
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
or al, -24
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
test eax, -675944960
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
