.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 23
not eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 84
setnle bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
setbe sil
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
setnp sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
