.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, rdi
xor si, -50
neg dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
cmp si, 91
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
jmp .bb_0.1
.bb_0.1:
xor bl, al
and bl, 89
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
lea cx, qword ptr [rcx]
add dl, -53 # instrumentation
lea rbx, qword ptr [rcx + rsi + 87]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
or edi, ecx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
