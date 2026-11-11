.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and al, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
cmovs eax, esi
test dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 75
jmp .bb_0.1
.bb_0.1:
bt ebx, edi
or dl, bl
cmovbe rax, rdi
and bl, -49 # instrumentation
cmovno bx, si
xor dl, -125
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
bts si, di
cmovl rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
