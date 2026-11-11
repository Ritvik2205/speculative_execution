.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add bl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
sub dl, -12
lea bx, qword ptr [rbx + rdx + 35]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
add sil, -93 # instrumentation
setnb sil
test bl, -8
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor edi, ebx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and edx, -62
add dl, -47 # instrumentation
sbb cl, 115
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
