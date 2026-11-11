.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rax]
bt rcx, rcx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
neg rsi
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, al
and rdx, rsi
lea di, qword ptr [rax]
lea ecx, qword ptr [rcx + rdi]
cmovnle cx, ax
lea ebx, qword ptr [rcx + rdx]
add cl, 107 # instrumentation
lea eax, qword ptr [rdi + rsi]
setbe cl
lea ax, qword ptr [rax + rdi + 96]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
