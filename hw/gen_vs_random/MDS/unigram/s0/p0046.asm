.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
or sil, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and cl, 11 # instrumentation
cmovp ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
test cx, 401
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
bts ecx, 184
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
cmovno cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
