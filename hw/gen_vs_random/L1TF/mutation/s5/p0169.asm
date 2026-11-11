.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdi
test dil, dl
test al, dl
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
bts rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
or rax, 699028911
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
cmp dl, al
lea ax, qword ptr [rax + rcx + 41285]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
