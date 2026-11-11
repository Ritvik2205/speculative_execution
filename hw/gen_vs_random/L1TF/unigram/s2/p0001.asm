.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
sbb rbx, -117
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
add dl, 126 # instrumentation
setnb sil
cmovo rbx, rbx
lea di, qword ptr [rdi + rsi + 38]
setno dil
jmp .bb_0.1
.bb_0.1:
add dl, -7 # instrumentation
cwd
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
test ebx, ecx
add cl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
sbb cl, -11
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
