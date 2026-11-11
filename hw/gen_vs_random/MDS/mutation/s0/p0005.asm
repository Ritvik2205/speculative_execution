.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 120 # instrumentation
cmovnz esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, -102
xor bl, al
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
test eax, -571234566
test eax, ebx
xor di, 40
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
or ax, 30524
cmovnp rsi, rbx
or rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, dil
or dl, -8
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -1634766116
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 60
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
