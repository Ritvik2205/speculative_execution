.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xor bl, al
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
or al, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
xor rcx, 71
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
cmovs eax, edx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
cmovle dx, ax
cmovnz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and cx, -2
test dil, al
and dl, 120 # instrumentation
cmovnz edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
or cx, si
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
