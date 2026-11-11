.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
movsx di, dl
sbb rbx, 96
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl eax, edx
add dl, cl
lea ecx, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 94
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
