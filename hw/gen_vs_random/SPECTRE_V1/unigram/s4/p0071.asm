.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dl
lea di, qword ptr [rcx + rcx + 80]
and dl, bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
lea rbx, qword ptr [rsi + rcx]
cmovle ax, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg cl, cl
sub sil, -18
add bl, -5 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
cmp di, cx
cmp di, 50
cmp al, 46
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or bx, 9
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
