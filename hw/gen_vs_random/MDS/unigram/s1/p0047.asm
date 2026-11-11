.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp eax, esi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 49
or sil, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
test eax, 424329527
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
not al
bts rdx, 200
bts rbx, 25
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
