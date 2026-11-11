.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
or al, al
or dl, dl
mul rax
test al, -5
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
lea rbx, qword ptr [rdx]
bt ecx, 5
jmp .bb_0.1
.bb_0.1:
xor al, -127
cmovnb rsi, rdx
add ax, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
