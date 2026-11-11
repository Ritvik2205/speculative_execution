.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ecx, edi
movsx rdx, dx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
cmovbe rbx, rdx
add bl, -92 # instrumentation
cmovs dx, bx
test bl, dl
lea eax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
setl dl
lea dx, qword ptr [rdi + rcx + 29]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
cmovp cx, ax
add sil, -101 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
