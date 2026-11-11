.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
cmp bl, dl
add cl, -94 # instrumentation
or al, cl
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
add bl, -29 # instrumentation
add bl, -70 # instrumentation
setnp bl
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
mov bl, sil
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdx
and bl, 124
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -93 # instrumentation
setnb dl
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
