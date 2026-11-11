.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
add al, -48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 63
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
cmp dx, 94
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
test dx, ax
lea di, qword ptr [rax + rdi]
cmovnp rdx, rcx
cmovnbe esi, eax
dec eax
cmovl ebx, ecx
setle dl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
bts eax, 232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
