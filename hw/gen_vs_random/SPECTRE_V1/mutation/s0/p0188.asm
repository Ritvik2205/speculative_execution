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
lea ax, qword ptr [rsi]
test sil, 112
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovnb bx, cx
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add al, 127 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
