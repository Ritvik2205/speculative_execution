.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
or cl, cl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
or ebx, -15
btr edx, edx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and sil, dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 33
or bl, 127
bts eax, eax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
btc ax, di
xor rax, rax
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
btr esi, esi
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
