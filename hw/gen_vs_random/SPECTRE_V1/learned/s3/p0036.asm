.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
add cl, dl
setnb cl
cmp dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, ax
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 14
lea edx, qword ptr [rax]
add sil, 36
lea rbx, qword ptr [rsi + rsi]
xor edx, 48
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
