.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
cmovo ebx, ebx
dec rcx
cbw
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 125 # instrumentation
adc cl, bl
test al, 70
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
lea bx, qword ptr [rcx + rbx]
cmovno rbx, rdx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cwd
movsx di, al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
jmp .bb_0.2
.bb_0.2:
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
cmovnb bx, si
xor si, 23
mov bl, bl
lea si, qword ptr [rcx + rbx + 46193]
xor rax, 1636804787
adc sil, -18
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
