.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rsi + 99]
cmp dl, bl
xchg cx, si
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
setl bl
test rdx, 95
movzx esi, al
test dil, -126
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
lea dx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
bts edx, edi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
