.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
setp sil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
lea rax, qword ptr [rsi + rax + 5]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
jmp .bb_0.1
.bb_0.1:
dec ecx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
cmovs edx, ecx
or al, al
xchg dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
