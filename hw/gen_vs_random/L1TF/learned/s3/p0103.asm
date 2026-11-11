.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
setbe dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
jmp .bb_0.1
.bb_0.1:
xchg di, ax
cmovno edi, ebx
and dl, -98
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
mov bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
mov al, dil
xor ax, -27503
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
