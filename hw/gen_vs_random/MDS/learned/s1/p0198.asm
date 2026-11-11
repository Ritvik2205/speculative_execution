.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, -28
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor dl, -68
cmovnbe edx, esi
cmovb si, ax
not ebx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
test ebx, 245771113
bt rcx, rax
lea eax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
