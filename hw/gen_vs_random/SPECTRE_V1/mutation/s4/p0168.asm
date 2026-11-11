.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
cmovo ebx, ebx
dec rcx
and al, -119
bts rax, 140
cbw
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 70
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
lea bx, qword ptr [rcx + rbx]
cwd
add cl, 125 # instrumentation
adc cl, bl
cmovno rbx, rdx
movsx di, al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
