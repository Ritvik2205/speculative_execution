.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdi
or rax, -82
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
bts rbx, rsi
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
test dil, dl
jmp .bb_0.1
.bb_0.1:
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea ax, qword ptr [rax + rcx + 41285]
jmp .bb_0.2
.bb_0.2:
add al, -40 # instrumentation
sbb rax, 1153316263
dec dl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
btr edx, 7
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
cmp esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
