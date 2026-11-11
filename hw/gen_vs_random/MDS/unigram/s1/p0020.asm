.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
or dl, 85
bt bx, ax
or sil, -49
cmovno dx, di
or dil, bl
bts bx, di
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
cmovnb rbx, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
cmovno rcx, rdi
bt edx, ebx
cmovno rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
bt rcx, 71
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
bts rbx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
