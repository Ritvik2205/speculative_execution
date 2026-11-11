.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto sil
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add ebx, -47
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
cmovnl edx, eax
add dl, 117 # instrumentation
sbb rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
adc cl, sil
and rcx, rbx
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
imul dx
cwd
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
