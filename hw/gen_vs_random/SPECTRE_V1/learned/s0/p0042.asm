.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
cmovbe rdi, rcx
lea rsi, qword ptr [rdx]
lea rax, qword ptr [rbx + rcx + 89]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
lea rsi, qword ptr [rcx + rax + 72]
lea esi, qword ptr [rdi + rdx + 22]
add bl, 95
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
or sil, 3
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
imul bl
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
