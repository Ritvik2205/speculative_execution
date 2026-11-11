.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dil
or ax, -4210
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor al, dil
btr di, dx
and dil, -34 # instrumentation
cmovs rsi, rdi
or dx, 125
cmovle rbx, rdi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
cmovno rdx, rdi
and cl, 125 # instrumentation
cmovo dx, bx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
or sil, dl
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
test cx, si
cmovns ebx, ecx
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
