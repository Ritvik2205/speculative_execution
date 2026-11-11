.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets dil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
bts ax, 5
or ecx, edi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
lea rdx, qword ptr [rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
setnp al
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
cmp al, -77
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
sets bl
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
cmovbe rsi, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
