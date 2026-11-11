.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
not rbx
xor al, 86
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
add cl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
cmovs ax, cx
lea rsi, qword ptr [rsi]
or sil, sil
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 52
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 12
lea rax, qword ptr [rcx + rax + 26]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
