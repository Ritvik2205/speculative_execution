.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or si, -12
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and dl, dl
and al, -35 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and al, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, 30
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
cmovle rbx, rdi
or ebx, -15
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
xor bl, -102
and dl, 125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
or di, 10
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
