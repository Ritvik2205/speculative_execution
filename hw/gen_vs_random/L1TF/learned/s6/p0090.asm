.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
cmp rdx, 36
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmp al, 27
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
btc cx, si
add sil, -61
or rdx, -22
btc ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
