.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
btr rbx, rcx
add dl, -73 # instrumentation
btr dx, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 23
add rbx, 17
add sil, sil
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
movsx rsi, ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 73
lea dx, qword ptr [rcx + rax + 32]
cmp al, al
bswap rax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
