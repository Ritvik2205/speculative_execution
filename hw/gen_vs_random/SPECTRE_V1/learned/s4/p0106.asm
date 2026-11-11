.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
add dl, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
adc cl, -18
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rax + rax + 63]
mov al, sil
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovno rbx, rax
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
