.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, ebx
bts rax, 140
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and al, -119
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
dec rcx
cbw
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cwd
cmovno rbx, rdx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
test al, 70
movsx di, al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
add cl, 125 # instrumentation
adc cl, bl
lea bx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
