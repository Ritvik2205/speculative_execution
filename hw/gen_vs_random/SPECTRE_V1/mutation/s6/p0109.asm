.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
cmp al, 77
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rbx + 10762]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
lea rsi, qword ptr [rdx + rcx + 57579]
lea cx, qword ptr [rbx]
setnl dl
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
cmovbe rsi, rax
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
