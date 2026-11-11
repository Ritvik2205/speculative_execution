.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
add ax, 1313
sets al
add al, 93
btr edi, edx
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add dl, -7 # instrumentation
cwd
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
mov dl, dl
add dl, -108 # instrumentation
cmovnle esi, esi
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
