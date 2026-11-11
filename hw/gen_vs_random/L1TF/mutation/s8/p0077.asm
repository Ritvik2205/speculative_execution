.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
sets al
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
btr edi, edx
add ax, -10746
add al, -46
jmp .bb_0.1
.bb_0.1:
add dl, -108 # instrumentation
cmovnle esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
add dl, -7 # instrumentation
cwd
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xchg rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
seto bl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
add ax, 23614
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
