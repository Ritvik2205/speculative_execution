.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
lea di, qword ptr [rbx + rbx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
test al, sil
cmp rdx, rbx
setnp cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt cx, di
movzx bx, al
bt si, ax
add dil, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
mov bl, cl
bts rcx, 95
cmovnb si, ax
cmovp si, di
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
